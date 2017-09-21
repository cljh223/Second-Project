package com.kilha.www.vo.tmap;

import java.util.ArrayList;

public class Permutation 
{
	// 순열 사이즈
	public ArrayList<Integer> all = new ArrayList<Integer>();
	
	public int[] setarr(int size)
	{
		int arr[] = new int[size];
		
		for(int i = 0; i < size; i++)
		{
			arr[i] = i + 1;
		}
		
		return arr;
	}

	// 한번 depth 가 k로 도달하면 사이클이 돌았음. 출력함.
	public void perm(int[] arr, int depth, int n, int k) 
	{
		if (depth == k) 
		{
			if(arr[0] == 1 && arr[arr.length - 1] == arr.length)
			{
				print(arr, k);
				return;
			}
		}
		for (int i = depth; i < n; i++) {
			swap(arr, i, depth);
			perm(arr, depth + 1, n, k);
			swap(arr, i, depth);
		}
	}

	// 자바에서는 포인터가 없기 때문에 i와 j를 통해 바꿔줌.
	public void swap(int[] arr, int i, int j) 
	{
		int temp = arr[i];
		arr[i] = arr[j];
		arr[j] = temp;
	}

	// 하나의 경우의 수
	public ArrayList<Integer> print(int[] arr, int k) 
	{
		for (int i = 0; i < k; i++) 
		{
			if (i == k - 1)
			{
				all.add(arr[i]);
				System.out.println(arr[i]);
			}
			else
			{
				all.add(arr[i]);
				System.out.print(arr[i] + " ");
			}
		}
		return all;
	}
}