package com.project.metier;

import java.rmi.RemoteException;

public interface IConx {
    public boolean  checkcnx(String uid, String password, String type) throws RemoteException;
}
