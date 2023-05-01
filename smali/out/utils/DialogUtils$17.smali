.class final Lutils/DialogUtils$17;
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

.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lutils/DialogUtils$DialogCallBack;Landroid/app/Dialog;)V
    .registers 3

    .prologue
    .line 502
    iput-object p1, p0, Lutils/DialogUtils$17;->val$callBack:Lutils/DialogUtils$DialogCallBack;

    iput-object p2, p0, Lutils/DialogUtils$17;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 505
    iget-object v0, p0, Lutils/DialogUtils$17;->val$callBack:Lutils/DialogUtils$DialogCallBack;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lutils/DialogUtils$DialogCallBack;->onNegativeButton(Ljava/lang/Object;)V

    .line 506
    iget-object v0, p0, Lutils/DialogUtils$17;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 507
    return-void
.end method
