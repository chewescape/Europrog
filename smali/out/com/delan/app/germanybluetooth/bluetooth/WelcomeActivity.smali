.class public Lcom/delan/app/germanybluetooth/bluetooth/WelcomeActivity;
.super Landroid/app/Activity;
.source "WelcomeActivity.java"


# static fields
.field static handler:Landroid/os/Handler;


# instance fields
.field goNextUiRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 30
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/delan/app/germanybluetooth/bluetooth/WelcomeActivity;->handler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 31
    new-instance v0, Lcom/delan/app/germanybluetooth/bluetooth/WelcomeActivity$1;

    invoke-direct {v0, p0}, Lcom/delan/app/germanybluetooth/bluetooth/WelcomeActivity$1;-><init>(Lcom/delan/app/germanybluetooth/bluetooth/WelcomeActivity;)V

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/WelcomeActivity;->goNextUiRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/delan/app/germanybluetooth/bluetooth/WelcomeActivity;)V
    .registers 1
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/WelcomeActivity;

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/delan/app/germanybluetooth/bluetooth/WelcomeActivity;->goNextUi()V

    return-void
.end method

.method private goNextUi()V
    .registers 3

    .prologue
    .line 38
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/delan/app/germanybluetooth/bluetooth/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 39
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/delan/app/germanybluetooth/bluetooth/WelcomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 40
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/bluetooth/WelcomeActivity;->finish()V

    .line 41
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 20
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    const v0, 0x7f040023

    invoke-virtual {p0, v0}, Lcom/delan/app/germanybluetooth/bluetooth/WelcomeActivity;->setContentView(I)V

    .line 22
    return-void
.end method

.method protected onResume()V
    .registers 5

    .prologue
    .line 26
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 27
    sget-object v0, Lcom/delan/app/germanybluetooth/bluetooth/WelcomeActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/WelcomeActivity;->goNextUiRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 28
    return-void
.end method
