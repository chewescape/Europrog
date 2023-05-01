.class Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$3$1;
.super Lutils/DialogUtils$DialogCallBack;
.source "HolidayTimeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$3;->onClick(Landroid/view/View;)V
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
.field final synthetic this$1:Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$3;


# direct methods
.method constructor <init>(Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$3;)V
    .registers 2
    .param p1, "this$1"    # Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$3;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$3$1;->this$1:Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$3;

    invoke-direct {p0}, Lutils/DialogUtils$DialogCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onPositiveButton(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 172
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$3$1;->onPositiveButton(Ljava/lang/String;)V

    return-void
.end method

.method public onPositiveButton(Ljava/lang/String;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 175
    invoke-super {p0, p1}, Lutils/DialogUtils$DialogCallBack;->onPositiveButton(Ljava/lang/Object;)V

    .line 176
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$3$1;->this$1:Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$3;

    iget-object v0, v0, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$3;->val$holder:Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$ViewHolder;

    invoke-static {v0}, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$ViewHolder;->access$500(Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_41

    .line 178
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$3$1;->this$1:Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$3;

    iget-object v0, v0, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$3;->this$0:Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter;

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$3$1;->this$1:Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$3;

    iget-object v1, v1, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$3;->val$holder:Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$ViewHolder;

    iget v1, v1, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$ViewHolder;->position:I

    invoke-static {v0, v1}, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter;->access$700(Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter;I)Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;

    move-result-object v0

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$3$1;->this$1:Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$3;

    iget-object v1, v1, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$3;->this$0:Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter;->access$600(Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter;)Lcom/delan/app/germanybluetooth/base/BaseActivity;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;->string2TempNum(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;->holidayTemperature:I

    .line 179
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$3$1;->this$1:Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$3;

    iget-object v0, v0, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$3;->this$0:Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter;

    invoke-static {v0}, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter;->access$800(Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter;)Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$OnHolidaySettingChanged;

    move-result-object v0

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$3$1;->this$1:Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$3;

    iget-object v1, v1, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$3;->val$holder:Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$ViewHolder;

    iget v1, v1, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$ViewHolder;->position:I

    invoke-interface {v0, v1}, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$OnHolidaySettingChanged;->onHolidaySettingChanged(I)V

    .line 181
    :cond_41
    return-void
.end method
