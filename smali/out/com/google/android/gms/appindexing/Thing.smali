.class public Lcom/google/android/gms/appindexing/Thing;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/appindexing/Thing$Builder;
    }
.end annotation


# instance fields
.field final he:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Landroid/os/Bundle;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/appindexing/Thing;->he:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public zzahu()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/appindexing/Thing;->he:Landroid/os/Bundle;

    return-object v0
.end method
