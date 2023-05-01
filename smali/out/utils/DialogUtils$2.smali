.class final Lutils/DialogUtils$2;
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


# direct methods
.method constructor <init>(Lutils/DialogUtils$DialogCallBack;)V
    .registers 2

    .prologue
    .line 76
    iput-object p1, p0, Lutils/DialogUtils$2;->val$callBack:Lutils/DialogUtils$DialogCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 80
    iget-object v0, p0, Lutils/DialogUtils$2;->val$callBack:Lutils/DialogUtils$DialogCallBack;

    if-eqz v0, :cond_a

    .line 81
    iget-object v0, p0, Lutils/DialogUtils$2;->val$callBack:Lutils/DialogUtils$DialogCallBack;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lutils/DialogUtils$DialogCallBack;->onNegativeButton(Ljava/lang/Object;)V

    .line 83
    :cond_a
    return-void
.end method
