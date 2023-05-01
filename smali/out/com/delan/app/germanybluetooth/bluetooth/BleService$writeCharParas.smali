.class Lcom/delan/app/germanybluetooth/bluetooth/BleService$writeCharParas;
.super Ljava/lang/Object;
.source "BleService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/delan/app/germanybluetooth/bluetooth/BleService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "writeCharParas"
.end annotation


# instance fields
.field public final bean:Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;

.field public final rawValue:[B

.field final synthetic this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

.field public final uuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/delan/app/germanybluetooth/bluetooth/BleService;Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;Ljava/lang/String;[B)V
    .registers 5
    .param p2, "bean"    # Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;
    .param p3, "uuid"    # Ljava/lang/String;
    .param p4, "rawValue"    # [B

    .prologue
    .line 903
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$writeCharParas;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 904
    iput-object p2, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$writeCharParas;->bean:Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;

    .line 905
    iput-object p3, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$writeCharParas;->uuid:Ljava/lang/String;

    .line 906
    iput-object p4, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$writeCharParas;->rawValue:[B

    .line 907
    return-void
.end method
