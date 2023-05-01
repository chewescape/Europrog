.class public Lcom/delan/app/germanybluetooth/bean/DeviceListBean;
.super Ljava/lang/Object;
.source "DeviceListBean.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/delan/app/germanybluetooth/bean/DeviceListBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private device:Landroid/bluetooth/BluetoothDevice;

.field private deviceName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 52
    new-instance v0, Lcom/delan/app/germanybluetooth/bean/DeviceListBean$1;

    invoke-direct {v0}, Lcom/delan/app/germanybluetooth/bean/DeviceListBean$1;-><init>()V

    sput-object v0, Lcom/delan/app/germanybluetooth/bean/DeviceListBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bean/DeviceListBean;->deviceName:Ljava/lang/String;

    .line 49
    const-class v0, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bean/DeviceListBean;->device:Landroid/bluetooth/BluetoothDevice;

    .line 50
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 35
    const/4 v0, 0x0

    return v0
.end method

.method public getDevice()Landroid/bluetooth/BluetoothDevice;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bean/DeviceListBean;->device:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 13
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bean/DeviceListBean;->deviceName:Ljava/lang/String;

    return-object v0
.end method

.method public setDevice(Landroid/bluetooth/BluetoothDevice;)V
    .registers 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/bean/DeviceListBean;->device:Landroid/bluetooth/BluetoothDevice;

    .line 28
    return-void
.end method

.method public setDeviceName(Ljava/lang/String;)V
    .registers 2
    .param p1, "deviceName"    # Ljava/lang/String;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/bean/DeviceListBean;->deviceName:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 40
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bean/DeviceListBean;->deviceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bean/DeviceListBean;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 42
    return-void
.end method
