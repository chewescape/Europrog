.class public final Lcom/google/android/gms/common/util/zzg;
.super Ljava/lang/Object;


# direct methods
.method public static zzb(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V
    .registers 5

    const/4 v2, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    iput v2, p1, Landroid/database/CharArrayBuffer;->sizeCopied:I

    :goto_9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p1, Landroid/database/CharArrayBuffer;->sizeCopied:I

    return-void

    :cond_10
    iget-object v0, p1, Landroid/database/CharArrayBuffer;->data:[C

    if-eqz v0, :cond_1d

    iget-object v0, p1, Landroid/database/CharArrayBuffer;->data:[C

    array-length v0, v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_24

    :cond_1d
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p1, Landroid/database/CharArrayBuffer;->data:[C

    goto :goto_9

    :cond_24
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p1, Landroid/database/CharArrayBuffer;->data:[C

    invoke-virtual {p0, v2, v0, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    goto :goto_9
.end method
