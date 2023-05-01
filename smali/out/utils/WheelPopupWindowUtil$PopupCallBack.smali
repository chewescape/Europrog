.class public Lutils/WheelPopupWindowUtil$PopupCallBack;
.super Ljava/lang/Object;
.source "WheelPopupWindowUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lutils/WheelPopupWindowUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PopupCallBack"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 296
    .local p0, "this":Lutils/WheelPopupWindowUtil$PopupCallBack;, "Lutils/WheelPopupWindowUtil$PopupCallBack<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 297
    return-void
.end method


# virtual methods
.method public onButton(Ljava/lang/Object;I)V
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "flag"    # I

    .prologue
    .line 317
    .local p0, "this":Lutils/WheelPopupWindowUtil$PopupCallBack;, "Lutils/WheelPopupWindowUtil$PopupCallBack<TT;>;"
    return-void
.end method

.method public onNegativeButton(Ljava/lang/Object;)V
    .registers 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 313
    .local p0, "this":Lutils/WheelPopupWindowUtil$PopupCallBack;, "Lutils/WheelPopupWindowUtil$PopupCallBack<TT;>;"
    return-void
.end method

.method public onPositiveButton(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 301
    .local p0, "this":Lutils/WheelPopupWindowUtil$PopupCallBack;, "Lutils/WheelPopupWindowUtil$PopupCallBack<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    return-void
.end method

.method public onPositiveButton(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    .prologue
    .line 305
    .local p0, "this":Lutils/WheelPopupWindowUtil$PopupCallBack;, "Lutils/WheelPopupWindowUtil$PopupCallBack<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    .local p2, "t2":Ljava/lang/Object;, "TT;"
    return-void
.end method

.method public onPositiveButton(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;TT;)V"
        }
    .end annotation

    .prologue
    .line 309
    .local p0, "this":Lutils/WheelPopupWindowUtil$PopupCallBack;, "Lutils/WheelPopupWindowUtil$PopupCallBack<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    .local p2, "t2":Ljava/lang/Object;, "TT;"
    .local p3, "t3":Ljava/lang/Object;, "TT;"
    return-void
.end method
