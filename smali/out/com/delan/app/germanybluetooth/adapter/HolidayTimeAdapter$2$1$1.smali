.class Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$2$1$1;
.super Lutils/DialogUtils$DialogCallBack;
.source "HolidayTimeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$2$1;->onPositiveButton(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lutils/DialogUtils$DialogCallBack",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$2$1;

.field final synthetic val$endDateStr:Ljava/lang/String;

.field final synthetic val$holiday:Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;

.field final synthetic val$startDateStr:Ljava/lang/String;

.field final synthetic val$startTimeStr:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$2$1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;)V
    .registers 6
    .param p1, "this$2"    # Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$2$1;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$2$1$1;->this$2:Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$2$1;

    iput-object p2, p0, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$2$1$1;->val$startDateStr:Ljava/lang/String;

    iput-object p3, p0, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$2$1$1;->val$startTimeStr:Ljava/lang/String;

    iput-object p4, p0, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$2$1$1;->val$endDateStr:Ljava/lang/String;

    iput-object p5, p0, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$2$1$1;->val$holiday:Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;

    invoke-direct {p0}, Lutils/DialogUtils$DialogCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onPositiveButton(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 149
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$2$1$1;->onPositiveButton(Ljava/lang/String;)V

    return-void
.end method

.method public onPositiveButton(Ljava/lang/String;)V
    .registers 8
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$2$1$1;->this$2:Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$2$1;

    iget-object v0, v0, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$2$1;->this$1:Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$2;

    iget-object v0, v0, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$2;->this$0:Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter;

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$2$1$1;->this$2:Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$2$1;

    iget-object v1, v1, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$2$1;->this$1:Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$2;

    iget-object v1, v1, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$2;->this$0:Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter;->access$600(Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter;)Lcom/delan/app/germanybluetooth/base/BaseActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$2$1$1;->val$startDateStr:Ljava/lang/String;

    iget-object v3, p0, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$2$1$1;->val$startTimeStr:Ljava/lang/String;

    iget-object v4, p0, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$2$1$1;->val$endDateStr:Ljava/lang/String;

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter;->access$1100(Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 153
    invoke-super {p0, p1}, Lutils/DialogUtils$DialogCallBack;->onPositiveButton(Ljava/lang/Object;)V

    .line 154
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$2$1$1;->this$2:Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$2$1;

    iget-object v0, v0, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$2$1;->this$1:Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$2;

    iget-object v0, v0, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$2;->val$holder:Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$ViewHolder;

    invoke-static {v0}, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$ViewHolder;->access$400(Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$2$1$1;->val$holiday:Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;->timeStringToNum(Ljava/lang/String;Z)V

    .line 156
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$2$1$1;->this$2:Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$2$1;

    iget-object v0, v0, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$2$1;->this$1:Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$2;

    iget-object v0, v0, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$2;->this$0:Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter;

    invoke-static {v0}, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter;->access$800(Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter;)Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$OnHolidaySettingChanged;

    move-result-object v0

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$2$1$1;->this$2:Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$2$1;

    iget-object v1, v1, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$2$1;->this$1:Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$2;

    iget-object v1, v1, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$2;->val$holder:Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$ViewHolder;

    iget v1, v1, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$ViewHolder;->position:I

    invoke-interface {v0, v1}, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$OnHolidaySettingChanged;->onHolidaySettingChanged(I)V

    .line 159
    :goto_48
    return-void

    .line 158
    :cond_49
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$2$1$1;->this$2:Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$2$1;

    iget-object v0, v0, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$2$1;->this$1:Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$2;

    iget-object v0, v0, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$2;->this$0:Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter;

    invoke-static {v0}, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter;->access$600(Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter;)Lcom/delan/app/germanybluetooth/base/BaseActivity;

    move-result-object v0

    const v1, 0x7f06004a

    invoke-static {v0, v1}, Lutils/MyToastUtil;->showToastShort(Landroid/content/Context;I)V

    goto :goto_48
.end method
