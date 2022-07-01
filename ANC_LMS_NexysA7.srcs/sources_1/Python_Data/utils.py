from random import random, randint


def NLMS(input_samples, desired_samples, error_samples=[], filter_order=5, mu=0.2):
    weights = [0] * filter_order
    number_of_samples = len(input_samples)
    rolling_window_samples = [0] * filter_order

    for sample_index in range(number_of_samples):
        rolling_window_index = sample_index
        while True:
            if rolling_window_index <= sample_index - filter_order:
                break
            if rolling_window_index >= 0:
                rolling_window_samples[filter_order + rolling_window_index - sample_index - 1] = input_samples[rolling_window_index]
            else:
                break

            rolling_window_index = rolling_window_index - 1

        current_desired_sample = desired_samples[sample_index]

        filter_output = 0.0

        for k in range(filter_order):
            filter_output += (weights[k] * rolling_window_samples[k])

        current_error = current_desired_sample - filter_output

        for l in range(filter_order):
            # normalization_factor = rolling_window_samples[l] * rolling_window_samples[l] + mu
            weights[l] = weights[l] + (mu * current_error * rolling_window_samples[l])
    return weights


if __name__ == '__main__':
    number_of_samples = 1000
    #max_int_16bit = 65535
    dummy_system = [0.0625, 0.125, 0.25, 0.5, 1]
    #dummy_system = [2, 4, 6, 5, 1]
    dummy_samples = [0] * number_of_samples
    desired_samples = [0] * number_of_samples
    filter_order = len(dummy_system)

    for x in range(number_of_samples):
        dummy_samples[x] = random()
        #dummy_samples[x] = randint(0, max_int_16bit)
    # print(dummy_samples)
    for x in range(number_of_samples):
        for y in range(filter_order):
            if (x - y) >= 0:
                desired_samples[x] += dummy_samples[x - y] * dummy_system[y]

    output_weights = NLMS(input_samples=dummy_samples, desired_samples=desired_samples, filter_order=filter_order, mu=0.2)

    for x in range(len(output_weights)):
        print('{:.20f}'.format(output_weights[x]))