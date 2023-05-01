.class Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$3;
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
    .line 188
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$3;->this$0:Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter;

    iput-object p2, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$3;->val$holder:Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 191
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$3;->this$0:Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter;

    invoke-static {v0}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter;->access$200(Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter;)Lcom/delan/app/germanybluetooth/base/BaseActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/delan/app/germanybluetooth/base/BaseActivity;->hasDialogShowing()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 205
    :goto_c
    return-void

    .line 193
    :cond_d
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$3;->this$0:Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter;

    invoke-static {v0}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter;->access$200(Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter;)Lcom/delan/app/germanybluetooth/base/BaseActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$3;->this$0:Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter;->access$200(Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter;)Lcom/delan/app/germanybluetooth/base/BaseActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$3;->this$0:Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter;

    iget-object v2, v2, Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter;->arr:[Ljava/lang/String;

    new-instance v3, Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$3$1;

    invoke-direct {v3, p0}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$3$1;-><init>(Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$3;)V

    invoke-static {v1, v2, v3}, Lutils/DialogUtils;->showOneWheelDialog(Landroid/app/Activity;[Ljava/lang/String;Lutils/DialogUtils$DialogCallBack;)Landroid/app/Dialog;

    move-result-object v1

    iput-object v1, v0, Lcom/delan/app/germanybluetooth/base/BaseActivity;->dialog:Landroid/app/Dialog;

    goto :goto_c
.end method
