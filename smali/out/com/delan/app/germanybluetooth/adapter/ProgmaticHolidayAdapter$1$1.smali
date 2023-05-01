.class Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$1$1;
.super Lutils/WheelPopupWindowUtil$PopupCallBack;
.source "ProgmaticHolidayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lutils/WheelPopupWindowUtil$PopupCallBack",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$1;


# direct methods
.method constructor <init>(Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$1;)V
    .registers 2
    .param p1, "this$1"    # Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$1;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$1$1;->this$1:Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$1;

    invoke-direct {p0}, Lutils/WheelPopupWindowUtil$PopupCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onPositiveButton(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 130
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$1$1;->onPositiveButton(Ljava/lang/String;)V

    return-void
.end method

.method public onPositiveButton(Ljava/lang/String;)V
    .registers 6
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 133
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$1$1;->this$1:Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$1;

    iget-object v1, v1, Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$1;->val$holder:Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$ViewHolder;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$ViewHolder;->access$300(Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$1$1;->this$1:Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$1;

    iget-object v1, v1, Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$1;->this$0:Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter;

    iget-object v2, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$1$1;->this$1:Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$1;

    iget-object v2, v2, Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$1;->val$holder:Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$ViewHolder;

    iget v2, v2, Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$ViewHolder;->position:I

    invoke-virtual {v1, v2}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter;->getItem(I)Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;

    move-result-object v0

    .line 135
    .local v0, "holiday":Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;->dateStringToNum(Ljava/lang/String;Z)V

    .line 136
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$1$1;->this$1:Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$1;

    iget-object v1, v1, Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$1;->this$0:Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter;->access$200(Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter;)Lcom/delan/app/germanybluetooth/base/BaseActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$1$1;->this$1:Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$1;

    iget-object v2, v2, Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$1;->this$0:Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter;

    invoke-static {v2}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter;->access$200(Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter;)Lcom/delan/app/germanybluetooth/base/BaseActivity;

    move-result-object v2

    new-instance v3, Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$1$1$1;

    invoke-direct {v3, p0, v0}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$1$1$1;-><init>(Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$1$1;Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;)V

    invoke-static {v2, v3}, Lutils/DialogUtils;->showTwoWheelDialog(Landroid/app/Activity;Lutils/DialogUtils$DialogCallBack;)Landroid/app/Dialog;

    move-result-object v2

    iput-object v2, v1, Lcom/delan/app/germanybluetooth/base/BaseActivity;->dialog:Landroid/app/Dialog;

    .line 146
    return-void
.end method
