package com.skybox.capstone.ui.home

import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.fragment.app.Fragment
import androidx.lifecycle.ViewModelProvider
import com.skybox.capstone.databinding.FragmentHomeBinding

class HomeFragment : Fragment() {

    private var _binding: FragmentHomeBinding? = null
    private val binding get() = _binding!!

    override fun onCreateView(
        inflater: LayoutInflater,
        container: ViewGroup?,
        savedInstanceState: Bundle?
    ): View {
        val homeViewModel = ViewModelProvider(this)[HomeViewModel::class.java]
        _binding = FragmentHomeBinding.inflate(inflater, container, false)
        val root: View = binding.root

        homeViewModel.text.observe(viewLifecycleOwner) {
            binding.textHome.text = it
        }
        return root
    }

    override fun onDestroyView() {
        super.onDestroyView()
        _binding = null
    }
} 