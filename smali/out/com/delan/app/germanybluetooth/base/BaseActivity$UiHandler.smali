.class public Lcom/delan/app/germanybluetooth/base/BaseActivity$UiHandler;
.super Landroid/os/Handler;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/delan/app/germanybluetooth/base/BaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "UiHandler"
.end annotation


# instance fields
.field private final mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/delan/app/germanybluetooth/base/BaseActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/delan/app/germanybluetooth/base/BaseActivity;)V
    .registers 3
    .param p1, "activity"    # Lcom/delan/app/germanybluetooth/base/BaseActivity;

    .prologue
    .line 466
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 467
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/base/BaseActivity$UiHandler;->mActivity:Ljava/lang/ref/WeakReference;

    .line 468
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 472
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/base/BaseActivity$UiHandler;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/delan/app/germanybluetooth/base/BaseActivity;

    .line 473
    .local v0, "activity":Lcom/delan/app/germanybluetooth/base/BaseActivity;
    if-eqz v0, :cond_d

    .line 474
    invoke-virtual {v0, p1}, Lcom/delan/app/germanybluetooth/base/BaseActivity;->handleMessage(Landroid/os/Message;)V

    .line 476
    :cond_d
    return-void
.end method
