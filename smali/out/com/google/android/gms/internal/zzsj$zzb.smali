.class final Lcom/google/android/gms/internal/zzsj$zzb;
.super Landroid/graphics/drawable/Drawable$ConstantState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzsj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "zzb"
.end annotation


# instance fields
.field Db:I

.field mChangingConfigurations:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzsj$zzb;)V
    .registers 3

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    if-eqz p1, :cond_d

    iget v0, p1, Lcom/google/android/gms/internal/zzsj$zzb;->mChangingConfigurations:I

    iput v0, p0, Lcom/google/android/gms/internal/zzsj$zzb;->mChangingConfigurations:I

    iget v0, p1, Lcom/google/android/gms/internal/zzsj$zzb;->Db:I

    iput v0, p0, Lcom/google/android/gms/internal/zzsj$zzb;->Db:I

    :cond_d
    return-void
.end method


# virtual methods
.method public getChangingConfigurations()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/zzsj$zzb;->mChangingConfigurations:I

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/zzsj;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzsj;-><init>(Lcom/google/android/gms/internal/zzsj$zzb;)V

    return-object v0
.end method
