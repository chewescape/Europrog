.class final Lutils/DialogUtils$15;
.super Ljava/lang/Object;
.source "DialogUtils.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lutils/DialogUtils;->showOneWheelDialog(Landroid/app/Activity;[Ljava/lang/String;Lutils/DialogUtils$DialogCallBack;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$array:[Ljava/lang/String;

.field final synthetic val$callBack:Lutils/DialogUtils$DialogCallBack;

.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lutils/DialogUtils$DialogCallBack;[Ljava/lang/String;Landroid/app/Dialog;)V
    .registers 4

    .prologue
    .line 435
    iput-object p1, p0, Lutils/DialogUtils$15;->val$callBack:Lutils/DialogUtils$DialogCallBack;

    iput-object p2, p0, Lutils/DialogUtils$15;->val$array:[Ljava/lang/String;

    iput-object p3, p0, Lutils/DialogUtils$15;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 438
    iget-object v0, p0, Lutils/DialogUtils$15;->val$callBack:Lutils/DialogUtils$DialogCallBack;

    iget-object v1, p0, Lutils/DialogUtils$15;->val$array:[Ljava/lang/String;

    sget-object v2, Lutils/DialogUtils;->witch:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lutils/DialogUtils$DialogCallBack;->onPositiveButton(Ljava/lang/Object;)V

    .line 439
    iget-object v0, p0, Lutils/DialogUtils$15;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 440
    iget-object v0, p0, Lutils/DialogUtils$15;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 441
    return-void
.end method
