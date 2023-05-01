.class public final Lcom/idelan/DeLanSDK/R$color;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idelan/DeLanSDK/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "color"
.end annotation


# static fields
.field public static theme:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    const/high16 v0, 0x7f040000

    sput v0, Lcom/idelan/DeLanSDK/R$color;->theme:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
