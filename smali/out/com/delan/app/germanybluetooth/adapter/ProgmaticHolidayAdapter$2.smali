.class Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$2;
.super Ljava/lang/Object;
.source "ProgmaticHolidayAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter;->showTimeTemperature(Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$ViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter;

.field final synthetic val$holder:Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter;Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$ViewHolder;)V
    .registers 3
    .param p1, "this$0"    # Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$2;->this$0:Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter;

    iput-object p2, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$2;->val$holder:Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 154
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$2;->this$0:Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter;

    new-instance v1, Lutils/WheelPopupWindowUtil;

    iget-object v2, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$2;->this$0:Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter;

    invoke-static {v2}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter;->access$200(Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter;)Lcom/delan/app/germanybluetooth/base/BaseActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lutils/WheelPopupWindowUtil;-><init>(Landroid/app/Activity;)V

    iput-object v1, v0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter;->popupWindowUtil:Lutils/WheelPopupWindowUtil;

    .line 155
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$2;->this$0:Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter;

    iget-object v0, v0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter;->popupWindowUtil:Lutils/WheelPopupWindowUtil;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    new-instance v2, Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$2$1;

    invoke-direct {v2, p0}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$2$1;-><init>(Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$2;)V

    invoke-virtual {v0, v1, v2}, Lutils/WheelPopupWindowUtil;->showDate(Ljava/util/Date;Lutils/WheelPopupWindowUtil$PopupCallBack;)V

    .line 184
    return-void
.end method
