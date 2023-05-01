.class public abstract Lcom/google/firebase/appindexing/builders/IndexableBuilder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/google/firebase/appindexing/builders/IndexableBuilder",
        "<*>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field aWz:Lcom/google/firebase/appindexing/internal/Thing$Metadata;

.field final he:Landroid/os/Bundle;

.field zzae:Ljava/lang/String;

.field final zzcpo:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzaa;->zzy(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzaa;->zzib(Ljava/lang/String;)Ljava/lang/String;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/appindexing/builders/IndexableBuilder;->he:Landroid/os/Bundle;

    iput-object p1, p0, Lcom/google/firebase/appindexing/builders/IndexableBuilder;->zzcpo:Ljava/lang/String;

    return-void
.end method

.method private varargs zza(Ljava/lang/String;[Lcom/google/firebase/appindexing/internal/Thing;)Lcom/google/firebase/appindexing/builders/IndexableBuilder;
    .registers 8
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [Lcom/google/firebase/appindexing/internal/Thing;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Lcom/google/firebase/appindexing/internal/Thing;",
            ")TT;"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzaa;->zzy(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzaa;->zzy(Ljava/lang/Object;)Ljava/lang/Object;

    array-length v0, p2

    if-lez v0, :cond_53

    move v0, v1

    move v2, v1

    :goto_c
    array-length v3, p2

    if-ge v0, v3, :cond_3b

    aget-object v3, p2, v0

    aput-object v3, p2, v2

    aget-object v3, p2, v0

    if-nez v3, :cond_38

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x3a

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Thing at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is null and is ignored by put method."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/firebase/appindexing/internal/zzg;->zzrr(Ljava/lang/String;)I

    :goto_35
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_38
    add-int/lit8 v2, v2, 0x1

    goto :goto_35

    :cond_3b
    if-lez v2, :cond_4e

    invoke-static {p2, v1, v2}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/firebase/appindexing/internal/Thing;

    iget-object v1, p0, Lcom/google/firebase/appindexing/builders/IndexableBuilder;->he:Landroid/os/Bundle;

    invoke-static {v0}, Lcom/google/firebase/appindexing/builders/IndexableBuilder;->zzd([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/Parcelable;

    invoke-virtual {v1, p1, v0}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    :cond_4e
    :goto_4e
    invoke-direct {p0}, Lcom/google/firebase/appindexing/builders/IndexableBuilder;->zzcoa()Lcom/google/firebase/appindexing/builders/IndexableBuilder;

    move-result-object v0

    return-object v0

    :cond_53
    const-string v0, "Thing array is empty and is ignored by put method."

    invoke-static {v0}, Lcom/google/firebase/appindexing/internal/zzg;->zzrr(Ljava/lang/String;)I

    goto :goto_4e
.end method

.method private static zza([Z)[Z
    .registers 3

    const/16 v1, 0x64

    array-length v0, p0

    if-ge v0, v1, :cond_6

    :goto_5
    return-object p0

    :cond_6
    const-string v0, "Input Array of elements is too big, cutting off."

    invoke-static {v0}, Lcom/google/firebase/appindexing/internal/zzg;->zzrr(Ljava/lang/String;)I

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object p0

    goto :goto_5
.end method

.method private static zzb([J)[J
    .registers 3

    const/16 v1, 0x64

    array-length v0, p0

    if-ge v0, v1, :cond_6

    :goto_5
    return-object p0

    :cond_6
    const-string v0, "Input Array of elements is too big, cutting off."

    invoke-static {v0}, Lcom/google/firebase/appindexing/internal/zzg;->zzrr(Ljava/lang/String;)I

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p0

    goto :goto_5
.end method

.method private zzcoa()Lcom/google/firebase/appindexing/builders/IndexableBuilder;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    return-object p0
.end method

.method private static zzd([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">([TS;)[TS;"
        }
    .end annotation

    const/16 v1, 0x64

    array-length v0, p0

    if-ge v0, v1, :cond_6

    :goto_5
    return-object p0

    :cond_6
    const-string v0, "Input Array of elements is too big, cutting off."

    invoke-static {v0}, Lcom/google/firebase/appindexing/internal/zzg;->zzrr(Ljava/lang/String;)I

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    goto :goto_5
.end method


# virtual methods
.method public final build()Lcom/google/firebase/appindexing/Indexable;
    .registers 6
    .annotation build Lcom/google/android/gms/common/annotation/KeepName;
    .end annotation

    new-instance v1, Lcom/google/firebase/appindexing/internal/Thing;

    new-instance v2, Landroid/os/Bundle;

    iget-object v0, p0, Lcom/google/firebase/appindexing/builders/IndexableBuilder;->he:Landroid/os/Bundle;

    invoke-direct {v2, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/google/firebase/appindexing/builders/IndexableBuilder;->aWz:Lcom/google/firebase/appindexing/internal/Thing$Metadata;

    if-nez v0, :cond_17

    sget-object v0, Lcom/google/firebase/appindexing/Indexable$Metadata;->aWv:Lcom/google/firebase/appindexing/internal/Thing$Metadata;

    :goto_f
    iget-object v3, p0, Lcom/google/firebase/appindexing/builders/IndexableBuilder;->zzae:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/firebase/appindexing/builders/IndexableBuilder;->zzcpo:Ljava/lang/String;

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/google/firebase/appindexing/internal/Thing;-><init>(Landroid/os/Bundle;Lcom/google/firebase/appindexing/internal/Thing$Metadata;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_17
    iget-object v0, p0, Lcom/google/firebase/appindexing/builders/IndexableBuilder;->aWz:Lcom/google/firebase/appindexing/internal/Thing$Metadata;

    goto :goto_f
.end method

.method public varargs put(Ljava/lang/String;[J)Lcom/google/firebase/appindexing/builders/IndexableBuilder;
    .registers 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [J
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepName;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[J)TT;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzaa;->zzy(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzaa;->zzy(Ljava/lang/Object;)Ljava/lang/Object;

    array-length v0, p2

    if-lez v0, :cond_17

    iget-object v0, p0, Lcom/google/firebase/appindexing/builders/IndexableBuilder;->he:Landroid/os/Bundle;

    invoke-static {p2}, Lcom/google/firebase/appindexing/builders/IndexableBuilder;->zzb([J)[J

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    :goto_12
    invoke-direct {p0}, Lcom/google/firebase/appindexing/builders/IndexableBuilder;->zzcoa()Lcom/google/firebase/appindexing/builders/IndexableBuilder;

    move-result-object v0

    return-object v0

    :cond_17
    const-string v0, "Long array is empty and is ignored by put method."

    invoke-static {v0}, Lcom/google/firebase/appindexing/internal/zzg;->zzrr(Ljava/lang/String;)I

    goto :goto_12
.end method

.method public varargs put(Ljava/lang/String;[Lcom/google/firebase/appindexing/Indexable;)Lcom/google/firebase/appindexing/builders/IndexableBuilder;
    .registers 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [Lcom/google/firebase/appindexing/Indexable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepName;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Lcom/google/firebase/appindexing/Indexable;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/appindexing/FirebaseAppIndexingInvalidArgumentException;
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzaa;->zzy(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzaa;->zzy(Ljava/lang/Object;)Ljava/lang/Object;

    array-length v0, p2

    new-array v2, v0, [Lcom/google/firebase/appindexing/internal/Thing;

    const/4 v0, 0x0

    move v1, v0

    :goto_b
    array-length v0, p2

    if-ge v1, v0, :cond_2a

    aget-object v0, p2, v1

    if-eqz v0, :cond_20

    aget-object v0, p2, v1

    instance-of v0, v0, Lcom/google/firebase/appindexing/internal/Thing;

    if-nez v0, :cond_20

    new-instance v0, Lcom/google/firebase/appindexing/FirebaseAppIndexingInvalidArgumentException;

    const-string v1, "Invalid Indexable encountered. Use Indexable.Builder or convenience methods under Indexables to create the Indexable."

    invoke-direct {v0, v1}, Lcom/google/firebase/appindexing/FirebaseAppIndexingInvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    aget-object v0, p2, v1

    check-cast v0, Lcom/google/firebase/appindexing/internal/Thing;

    aput-object v0, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_b

    :cond_2a
    invoke-direct {p0, p1, v2}, Lcom/google/firebase/appindexing/builders/IndexableBuilder;->zza(Ljava/lang/String;[Lcom/google/firebase/appindexing/internal/Thing;)Lcom/google/firebase/appindexing/builders/IndexableBuilder;

    invoke-direct {p0}, Lcom/google/firebase/appindexing/builders/IndexableBuilder;->zzcoa()Lcom/google/firebase/appindexing/builders/IndexableBuilder;

    move-result-object v0

    return-object v0
.end method

.method protected varargs put(Ljava/lang/String;[Lcom/google/firebase/appindexing/builders/IndexableBuilder;)Lcom/google/firebase/appindexing/builders/IndexableBuilder;
    .registers 7
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [Lcom/google/firebase/appindexing/builders/IndexableBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Lcom/google/firebase/appindexing/builders/IndexableBuilder;",
            ">(",
            "Ljava/lang/String;",
            "[TS;)TT;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzaa;->zzy(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzaa;->zzy(Ljava/lang/Object;)Ljava/lang/Object;

    array-length v0, p2

    if-lez v0, :cond_4d

    array-length v0, p2

    new-array v2, v0, [Lcom/google/firebase/appindexing/internal/Thing;

    const/4 v0, 0x0

    move v1, v0

    :goto_e
    array-length v0, p2

    if-ge v1, v0, :cond_42

    aget-object v0, p2, v1

    if-nez v0, :cond_37

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v3, 0x3c

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Builder at "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " is null and is ignored by put method."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/appindexing/internal/zzg;->zzrr(Ljava/lang/String;)I

    :goto_33
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_e

    :cond_37
    aget-object v0, p2, v1

    invoke-virtual {v0}, Lcom/google/firebase/appindexing/builders/IndexableBuilder;->build()Lcom/google/firebase/appindexing/Indexable;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/appindexing/internal/Thing;

    aput-object v0, v2, v1

    goto :goto_33

    :cond_42
    array-length v0, v2

    if-lez v0, :cond_48

    invoke-direct {p0, p1, v2}, Lcom/google/firebase/appindexing/builders/IndexableBuilder;->zza(Ljava/lang/String;[Lcom/google/firebase/appindexing/internal/Thing;)Lcom/google/firebase/appindexing/builders/IndexableBuilder;

    :cond_48
    :goto_48
    invoke-direct {p0}, Lcom/google/firebase/appindexing/builders/IndexableBuilder;->zzcoa()Lcom/google/firebase/appindexing/builders/IndexableBuilder;

    move-result-object v0

    return-object v0

    :cond_4d
    const-string v0, "Builder array is empty and is ignored by put method."

    invoke-static {v0}, Lcom/google/firebase/appindexing/internal/zzg;->zzrr(Ljava/lang/String;)I

    goto :goto_48
.end method

.method public varargs put(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/firebase/appindexing/builders/IndexableBuilder;
    .registers 9
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepName;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const/16 v5, 0x4e20

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzaa;->zzy(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzaa;->zzy(Ljava/lang/Object;)Ljava/lang/Object;

    array-length v0, p2

    if-lez v0, :cond_89

    move v0, v1

    move v2, v1

    :goto_e
    array-length v3, p2

    const/16 v4, 0x64

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-ge v0, v3, :cond_71

    aget-object v3, p2, v0

    aput-object v3, p2, v2

    aget-object v3, p2, v0

    if-nez v3, :cond_40

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x3b

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "String at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is null and is ignored by put method."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/firebase/appindexing/internal/zzg;->zzrr(Ljava/lang/String;)I

    :goto_3d
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_40
    aget-object v3, p2, v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v5, :cond_6e

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x35

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "String at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is too long, truncating string."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/firebase/appindexing/internal/zzg;->zzrr(Ljava/lang/String;)I

    aget-object v3, p2, v2

    invoke-virtual {v3, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    aput-object v3, p2, v2

    :cond_6e
    add-int/lit8 v2, v2, 0x1

    goto :goto_3d

    :cond_71
    if-lez v2, :cond_84

    invoke-static {p2, v1, v2}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iget-object v1, p0, Lcom/google/firebase/appindexing/builders/IndexableBuilder;->he:Landroid/os/Bundle;

    invoke-static {v0}, Lcom/google/firebase/appindexing/builders/IndexableBuilder;->zzd([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {v1, p1, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_84
    :goto_84
    invoke-direct {p0}, Lcom/google/firebase/appindexing/builders/IndexableBuilder;->zzcoa()Lcom/google/firebase/appindexing/builders/IndexableBuilder;

    move-result-object v0

    return-object v0

    :cond_89
    const-string v0, "String array is empty and is ignored by put method."

    invoke-static {v0}, Lcom/google/firebase/appindexing/internal/zzg;->zzrr(Ljava/lang/String;)I

    goto :goto_84
.end method

.method public varargs put(Ljava/lang/String;[Z)Lcom/google/firebase/appindexing/builders/IndexableBuilder;
    .registers 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [Z
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepName;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[Z)TT;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzaa;->zzy(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzaa;->zzy(Ljava/lang/Object;)Ljava/lang/Object;

    array-length v0, p2

    if-lez v0, :cond_17

    iget-object v0, p0, Lcom/google/firebase/appindexing/builders/IndexableBuilder;->he:Landroid/os/Bundle;

    invoke-static {p2}, Lcom/google/firebase/appindexing/builders/IndexableBuilder;->zza([Z)[Z

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    :goto_12
    invoke-direct {p0}, Lcom/google/firebase/appindexing/builders/IndexableBuilder;->zzcoa()Lcom/google/firebase/appindexing/builders/IndexableBuilder;

    move-result-object v0

    return-object v0

    :cond_17
    const-string v0, "Boolean array is empty and is ignored by put method."

    invoke-static {v0}, Lcom/google/firebase/appindexing/internal/zzg;->zzrr(Ljava/lang/String;)I

    goto :goto_12
.end method

.method public final setDescription(Ljava/lang/String;)Lcom/google/firebase/appindexing/builders/IndexableBuilder;
    .registers 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepName;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzaa;->zzy(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "description"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/appindexing/builders/IndexableBuilder;->put(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/firebase/appindexing/builders/IndexableBuilder;

    move-result-object v0

    return-object v0
.end method

.method public final setImage(Ljava/lang/String;)Lcom/google/firebase/appindexing/builders/IndexableBuilder;
    .registers 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepName;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzaa;->zzy(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "image"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/appindexing/builders/IndexableBuilder;->put(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/firebase/appindexing/builders/IndexableBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setMetadata(Lcom/google/firebase/appindexing/Indexable$Metadata$Builder;)Lcom/google/firebase/appindexing/builders/IndexableBuilder;
    .registers 4
    .param p1    # Lcom/google/firebase/appindexing/Indexable$Metadata$Builder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepName;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/appindexing/Indexable$Metadata$Builder;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/appindexing/builders/IndexableBuilder;->aWz:Lcom/google/firebase/appindexing/internal/Thing$Metadata;

    if-nez v0, :cond_18

    const/4 v0, 0x1

    :goto_5
    const-string v1, "setMetadata may only be called once"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzaa;->zza(ZLjava/lang/Object;)V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzaa;->zzy(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/firebase/appindexing/Indexable$Metadata$Builder;->zzcnz()Lcom/google/firebase/appindexing/internal/Thing$Metadata;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/appindexing/builders/IndexableBuilder;->aWz:Lcom/google/firebase/appindexing/internal/Thing$Metadata;

    invoke-direct {p0}, Lcom/google/firebase/appindexing/builders/IndexableBuilder;->zzcoa()Lcom/google/firebase/appindexing/builders/IndexableBuilder;

    move-result-object v0

    return-object v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final setName(Ljava/lang/String;)Lcom/google/firebase/appindexing/builders/IndexableBuilder;
    .registers 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepName;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzaa;->zzy(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "name"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/appindexing/builders/IndexableBuilder;->put(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/firebase/appindexing/builders/IndexableBuilder;

    move-result-object v0

    return-object v0
.end method

.method public final setSameAs(Ljava/lang/String;)Lcom/google/firebase/appindexing/builders/IndexableBuilder;
    .registers 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepName;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzaa;->zzy(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "sameAs"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/appindexing/builders/IndexableBuilder;->put(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/firebase/appindexing/builders/IndexableBuilder;

    move-result-object v0

    return-object v0
.end method

.method public final setUrl(Ljava/lang/String;)Lcom/google/firebase/appindexing/builders/IndexableBuilder;
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepName;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzaa;->zzy(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/firebase/appindexing/builders/IndexableBuilder;->zzae:Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/firebase/appindexing/builders/IndexableBuilder;->zzcoa()Lcom/google/firebase/appindexing/builders/IndexableBuilder;

    move-result-object v0

    return-object v0
.end method
