.class Landroid/support/v4/view/MotionEventCompat$ICSMotionEventVersionImpl;
.super Landroid/support/v4/view/MotionEventCompat$HoneycombMr1MotionEventVersionImpl;
.source "MotionEventCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/MotionEventCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ICSMotionEventVersionImpl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 158
    invoke-direct {p0}, Landroid/support/v4/view/MotionEventCompat$HoneycombMr1MotionEventVersionImpl;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/view/MotionEventCompat$1;)V
    .registers 2
    .param p1, "x0"    # Landroid/support/v4/view/MotionEventCompat$1;

    .prologue
    .line 158
    invoke-direct {p0}, Landroid/support/v4/view/MotionEventCompat$ICSMotionEventVersionImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getButtonState(Landroid/view/MotionEvent;)I
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 161
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompatICS;->getButtonState(Landroid/view/MotionEvent;)I

    move-result v0

    return v0
.end method
