.class final Lutils/DialogUtils$1;
.super Ljava/lang/Object;
.source "DialogUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lutils/DialogUtils;->inputDialog(Ljava/lang/String;Landroid/content/Context;Lutils/DialogUtils$DialogCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callBack:Lutils/DialogUtils$DialogCallBack;

.field final synthetic val$editText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lutils/DialogUtils$DialogCallBack;Landroid/widget/EditText;)V
    .registers 3

    .prologue
    .line 66
    iput-object p1, p0, Lutils/DialogUtils$1;->val$callBack:Lutils/DialogUtils$DialogCallBack;

    iput-object p2, p0, Lutils/DialogUtils$1;->val$editText:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 71
    iget-object v0, p0, Lutils/DialogUtils$1;->val$callBack:Lutils/DialogUtils$DialogCallBack;

    if-eqz v0, :cond_13

    .line 72
    iget-object v0, p0, Lutils/DialogUtils$1;->val$callBack:Lutils/DialogUtils$DialogCallBack;

    iget-object v1, p0, Lutils/DialogUtils$1;->val$editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lutils/DialogUtils$DialogCallBack;->onPositiveButton(Ljava/lang/Object;)V

    .line 74
    :cond_13
    return-void
.end method
