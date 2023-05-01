.class Lcom/delan/app/germanybluetooth/adapter/DeviceListAdapter$FieldReferences;
.super Ljava/lang/Object;
.source "DeviceListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/delan/app/germanybluetooth/adapter/DeviceListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FieldReferences"
.end annotation


# instance fields
.field deviceName:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/delan/app/germanybluetooth/adapter/DeviceListAdapter;


# direct methods
.method private constructor <init>(Lcom/delan/app/germanybluetooth/adapter/DeviceListAdapter;)V
    .registers 2

    .prologue
    .line 87
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/adapter/DeviceListAdapter$FieldReferences;->this$0:Lcom/delan/app/germanybluetooth/adapter/DeviceListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/delan/app/germanybluetooth/adapter/DeviceListAdapter;Lcom/delan/app/germanybluetooth/adapter/DeviceListAdapter$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/delan/app/germanybluetooth/adapter/DeviceListAdapter;
    .param p2, "x1"    # Lcom/delan/app/germanybluetooth/adapter/DeviceListAdapter$1;

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/delan/app/germanybluetooth/adapter/DeviceListAdapter$FieldReferences;-><init>(Lcom/delan/app/germanybluetooth/adapter/DeviceListAdapter;)V

    return-void
.end method
