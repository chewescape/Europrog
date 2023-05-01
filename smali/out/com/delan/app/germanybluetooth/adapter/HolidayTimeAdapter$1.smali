.class Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$1;
.super Ljava/lang/Object;
.source "HolidayTimeAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter;->showDialog(Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$ViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter;

.field final synthetic val$holder:Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter;Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$ViewHolder;)V
    .registers 3
    .param p1, "this$0"    # Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$1;->this$0:Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter;

    iput-object p2, p0, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$1;->val$holder:Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$1;->this$0:Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter;

    new-instance v1, Lutils/WheelPopupWindowUtil;

    iget-object v2, p0, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$1;->this$0:Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter;

    invoke-static {v2}, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter;->access$600(Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter;)Lcom/delan/app/germanybluetooth/base/BaseActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lutils/WheelPopupWindowUtil;-><init>(Landroid/app/Activity;)V

    iput-object v1, v0, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter;->popupWindowUtil:Lutils/WheelPopupWindowUtil;

    .line 108
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$1;->this$0:Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter;

    iget-object v0, v0, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter;->popupWindowUtil:Lutils/WheelPopupWindowUtil;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    new-instance v2, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$1$1;

    invoke-direct {v2, p0}, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$1$1;-><init>(Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$1;)V

    invoke-virtual {v0, v1, v2}, Lutils/WheelPopupWindowUtil;->showDate(Ljava/util/Date;Lutils/WheelPopupWindowUtil$PopupCallBack;)V

    .line 128
    return-void
.end method
