.class Lcom/delan/app/germanybluetooth/base/BleActivity$1;
.super Ljava/lang/Object;
.source "BleActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/delan/app/germanybluetooth/base/BleActivity;->startScanning()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/delan/app/germanybluetooth/base/BleActivity;


# direct methods
.method constructor <init>(Lcom/delan/app/germanybluetooth/base/BleActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/delan/app/germanybluetooth/base/BleActivity;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/base/BleActivity$1;->this$0:Lcom/delan/app/germanybluetooth/base/BleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/base/BleActivity$1;->this$0:Lcom/delan/app/germanybluetooth/base/BleActivity;

    iget-object v0, v0, Lcom/delan/app/germanybluetooth/base/BleActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-virtual {v0}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->scan()V

    .line 162
    return-void
.end method
