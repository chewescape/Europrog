.class public Lcom/delan/app/germanybluetooth/bluetooth/BleService$BleBinder;
.super Landroid/os/Binder;
.source "BleService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/delan/app/germanybluetooth/bluetooth/BleService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BleBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;


# direct methods
.method public constructor <init>(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$BleBinder;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lcom/delan/app/germanybluetooth/bluetooth/BleService;
    .registers 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$BleBinder;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    return-object v0
.end method
