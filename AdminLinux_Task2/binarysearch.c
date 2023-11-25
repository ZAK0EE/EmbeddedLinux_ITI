#include <stdio.h>

int binarySearch(int arr[], int size, int target)
{
	int left = 0;
	int right = size - 1;
	int mid = 0;
    int result = -1;
	while(right >= left)
	{
        mid = (left + right) / 2;
        if(arr[mid] == target)
        {
            result = mid;
            break;
        }
        
        if(target > arr[mid])
            left = mid + 1;

        if(target < arr[mid])
            right = mid - 1;
	}

    return result;
}

int main()
{
    int arr[7] = {4, 23, -5, 1, 6, 123, 5};

    printf("%d\n", binarySearch(arr, 7, 123));
    printf("%d\n", binarySearch(arr, 7, 12));


}
