.class final Lutils/DialogUtils$4;
.super Ljava/lang/Object;
.source "DialogUtils.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lutils/DialogUtils;->showInputBluetoothDialog(Landroid/app/Activity;Ljava/lang/String;Lutils/DialogUtils$DialogCallBack;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callBack:Lutils/DialogUtils$DialogCallBack;

.field final synthetic val$context:Landroid/app/Activity;

.field final synthetic val$dialog:Landroid/app/Dialog;

.field final synthetic val$inputText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Landroid/widget/EditText;Landroid/app/Activity;Lutils/DialogUtils$DialogCallBack;Landroid/app/Dialog;)V
    .registers 5

    .prologue
    .line 130
    iput-object p1, p0, Lutils/DialogUtils$4;->val$inputText:Landroid/widget/EditText;

    iput-object p2, p0, Lutils/DialogUtils$4;->val$context:Landroid/app/Activity;

    iput-object p3, p0, Lutils/DialogUtils$4;->val$callBack:Lutils/DialogUtils$DialogCallBack;

    iput-object p4, p0, Lutils/DialogUtils$4;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 133
    iget-object v1, p0, Lutils/DialogUtils$4;->val$inputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, "text":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 135
    iget-object v1, p0, Lutils/DialogUtils$4;->val$context:Landroid/app/Activity;

    iget-object v2, p0, Lutils/DialogUtils$4;->val$context:Landroid/app/Activity;

    const v3, 0x7f060055

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/idelan/app/Util/ToastUtil;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 142
    :goto_22
    return-void

    .line 138
    :cond_23
    iget-object v1, p0, Lutils/DialogUtils$4;->val$callBack:Lutils/DialogUtils$DialogCallBack;

    if-eqz v1, :cond_2c

    .line 139
    iget-object v1, p0, Lutils/DialogUtils$4;->val$callBack:Lutils/DialogUtils$DialogCallBack;

    invoke-virtual {v1, v0}, Lutils/DialogUtils$DialogCallBack;->onPositiveButton(Ljava/lang/Object;)V

    .line 141
    :cond_2c
    iget-object v1, p0, Lutils/DialogUtils$4;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->cancel()V

    goto :goto_22
.end method
