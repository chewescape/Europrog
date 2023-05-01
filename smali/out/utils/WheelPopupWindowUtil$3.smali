.class Lutils/WheelPopupWindowUtil$3;
.super Ljava/lang/Object;
.source "WheelPopupWindowUtil.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lutils/WheelPopupWindowUtil;->showDate(Ljava/util/Date;Lutils/WheelPopupWindowUtil$PopupCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lutils/WheelPopupWindowUtil;

.field final synthetic val$callBack:Lutils/WheelPopupWindowUtil$PopupCallBack;


# direct methods
.method constructor <init>(Lutils/WheelPopupWindowUtil;Lutils/WheelPopupWindowUtil$PopupCallBack;)V
    .registers 3
    .param p1, "this$0"    # Lutils/WheelPopupWindowUtil;

    .prologue
    .line 136
    iput-object p1, p0, Lutils/WheelPopupWindowUtil$3;->this$0:Lutils/WheelPopupWindowUtil;

    iput-object p2, p0, Lutils/WheelPopupWindowUtil$3;->val$callBack:Lutils/WheelPopupWindowUtil$PopupCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 140
    iget-object v0, p0, Lutils/WheelPopupWindowUtil$3;->val$callBack:Lutils/WheelPopupWindowUtil$PopupCallBack;

    if-eqz v0, :cond_a

    .line 141
    iget-object v0, p0, Lutils/WheelPopupWindowUtil$3;->val$callBack:Lutils/WheelPopupWindowUtil$PopupCallBack;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lutils/WheelPopupWindowUtil$PopupCallBack;->onNegativeButton(Ljava/lang/Object;)V

    .line 143
    :cond_a
    iget-object v0, p0, Lutils/WheelPopupWindowUtil$3;->this$0:Lutils/WheelPopupWindowUtil;

    invoke-virtual {v0}, Lutils/WheelPopupWindowUtil;->dismiss()V

    .line 144
    return-void
.end method
