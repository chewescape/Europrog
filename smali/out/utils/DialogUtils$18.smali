.class final Lutils/DialogUtils$18;
.super Ljava/lang/Object;
.source "DialogUtils.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lutils/DialogUtils;->showTwoWheelDialog(Landroid/app/Activity;Lutils/DialogUtils$DialogCallBack;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callBack:Lutils/DialogUtils$DialogCallBack;

.field final synthetic val$context:Landroid/app/Activity;

.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/app/Dialog;Lutils/DialogUtils$DialogCallBack;)V
    .registers 4

    .prologue
    .line 510
    iput-object p1, p0, Lutils/DialogUtils$18;->val$context:Landroid/app/Activity;

    iput-object p2, p0, Lutils/DialogUtils$18;->val$dialog:Landroid/app/Dialog;

    iput-object p3, p0, Lutils/DialogUtils$18;->val$callBack:Lutils/DialogUtils$DialogCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 513
    sget-object v0, Lutils/DialogUtils;->witch:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 514
    iget-object v0, p0, Lutils/DialogUtils$18;->val$context:Landroid/app/Activity;

    const v1, 0x7f060055

    invoke-static {v0, v1}, Lutils/MyToastUtil;->showToastShort(Landroid/content/Context;I)V

    .line 515
    iget-object v0, p0, Lutils/DialogUtils$18;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 518
    :goto_15
    iget-object v0, p0, Lutils/DialogUtils$18;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 519
    return-void

    .line 517
    :cond_1b
    iget-object v0, p0, Lutils/DialogUtils$18;->val$callBack:Lutils/DialogUtils$DialogCallBack;

    sget-object v1, Lutils/DialogUtils;->witch:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lutils/DialogUtils$DialogCallBack;->onPositiveButton(Ljava/lang/Object;)V

    goto :goto_15
.end method
