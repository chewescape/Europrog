.class public Lcom/delan/app/germanybluetooth/adapter/DeviceListAdapter;
.super Landroid/widget/BaseAdapter;
.source "DeviceListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/delan/app/germanybluetooth/adapter/DeviceListAdapter$FieldReferences;
    }
.end annotation


# instance fields
.field private mDevices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 3
    .param p1, "par"    # Landroid/app/Activity;

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/DeviceListAdapter;->mDevices:Ljava/util/ArrayList;

    .line 23
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/DeviceListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 24
    return-void
.end method


# virtual methods
.method public addDevice(Landroid/bluetooth/BluetoothDevice;)V
    .registers 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/DeviceListAdapter;->mDevices:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/DeviceListAdapter;->mDevices:Ljava/util/ArrayList;

    .line 31
    :cond_b
    invoke-virtual {p0, p1}, Lcom/delan/app/germanybluetooth/adapter/DeviceListAdapter;->contains(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 32
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/DeviceListAdapter;->mDevices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    :cond_16
    return-void
.end method

.method public clearList()V
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/DeviceListAdapter;->mDevices:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    .line 42
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/DeviceListAdapter;->mDevices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 43
    :cond_9
    return-void
.end method

.method public contains(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 82
    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/DeviceListAdapter;->mDevices:Ljava/util/ArrayList;

    if-nez v0, :cond_8

    .line 83
    :cond_6
    const/4 v0, 0x0

    .line 84
    :goto_7
    return v0

    :cond_8
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/DeviceListAdapter;->mDevices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_7
.end method

.method public deleteItem(Landroid/bluetooth/BluetoothDevice;)V
    .registers 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/DeviceListAdapter;->mDevices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 79
    return-void
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/DeviceListAdapter;->mDevices:Ljava/util/ArrayList;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/DeviceListAdapter;->mDevices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_5
.end method

.method public getDevice(I)Landroid/bluetooth/BluetoothDevice;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 37
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/DeviceListAdapter;->mDevices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/delan/app/germanybluetooth/adapter/DeviceListAdapter;->getDevice(I)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 57
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x0

    .line 63
    if-nez p2, :cond_31

    .line 64
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/adapter/DeviceListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f04002d

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 65
    new-instance v1, Lcom/delan/app/germanybluetooth/adapter/DeviceListAdapter$FieldReferences;

    invoke-direct {v1, p0, v5}, Lcom/delan/app/germanybluetooth/adapter/DeviceListAdapter$FieldReferences;-><init>(Lcom/delan/app/germanybluetooth/adapter/DeviceListAdapter;Lcom/delan/app/germanybluetooth/adapter/DeviceListAdapter$1;)V

    .line 66
    .local v1, "fields":Lcom/delan/app/germanybluetooth/adapter/DeviceListAdapter$FieldReferences;
    const v3, 0x7f0d00b5

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/delan/app/germanybluetooth/adapter/DeviceListAdapter$FieldReferences;->deviceName:Landroid/widget/TextView;

    .line 67
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 71
    :goto_1f
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/adapter/DeviceListAdapter;->mDevices:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 72
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    .line 73
    .local v2, "name":Ljava/lang/String;
    iget-object v3, v1, Lcom/delan/app/germanybluetooth/adapter/DeviceListAdapter$FieldReferences;->deviceName:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    return-object p2

    .line 69
    .end local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "fields":Lcom/delan/app/germanybluetooth/adapter/DeviceListAdapter$FieldReferences;
    .end local v2    # "name":Ljava/lang/String;
    :cond_31
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/delan/app/germanybluetooth/adapter/DeviceListAdapter$FieldReferences;

    .restart local v1    # "fields":Lcom/delan/app/germanybluetooth/adapter/DeviceListAdapter$FieldReferences;
    goto :goto_1f
.end method
