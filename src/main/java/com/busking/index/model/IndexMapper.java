package com.busking.index.model;

import java.util.ArrayList;

import com.busking.board.model.BoardNewsDTO;

public interface IndexMapper {
	public ArrayList<BoardNewsDTO> getNewsList();
}