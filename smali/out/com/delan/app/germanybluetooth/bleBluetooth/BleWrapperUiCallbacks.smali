.class public interface abstract Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapperUiCallbacks;
.super Ljava/lang/Object;
.source "BleWrapperUiCallbacks.java"


# virtual methods
.method public abstract uiAvailableServices(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothDevice;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothGatt;",
            "Landroid/bluetooth/BluetoothDevice;",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothGattService;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract uiDeviceConnectionStatusChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothDevice;Z)V
.end method

.method public abstract uiDeviceFound(Landroid/bluetooth/BluetoothDevice;I)V
.end method

.method public abstract uiDeviceFound(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/le/ScanResult;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract uiGotNotification(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
.end method

.method public abstract uiNewValueForCharacteristic(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothGattService;Landroid/bluetooth/BluetoothGattCharacteristic;[BLjava/lang/String;)V
.end method

.method public abstract uiReadWriteCharacteristicError(Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;Landroid/bluetooth/BluetoothGattCharacteristic;Z)V
.end method

.method public abstract uiScanFailed(I)V
.end method

.method public abstract uiWaitReadWriteCharacteristicTimeOut(Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;Landroid/bluetooth/BluetoothGattCharacteristic;Z)V
.end method

.method public abstract uiWriteComplete(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
.end method
