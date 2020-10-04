.class public Lcom/android/server/slice/SlicePermissionManager$PkgUser;
.super Ljava/lang/Object;
.source "SlicePermissionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/slice/SlicePermissionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PkgUser"
.end annotation


# static fields
.field private static final FORMAT:Ljava/lang/String; = "%s@%d"

.field private static final SEPARATOR:Ljava/lang/String; = "@"


# instance fields
.field private final mPkg:Ljava/lang/String;

.field private final mUserId:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "pkgUserStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 415
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 417
    :try_start_0
    const-string v0, "@"

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 418
    .local v0, "vals":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/android/server/slice/SlicePermissionManager$PkgUser;->mPkg:Ljava/lang/String;

    .line 419
    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/slice/SlicePermissionManager$PkgUser;->mUserId:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 422
    .end local v0    # "vals":[Ljava/lang/String;
    nop

    .line 423
    return-void

    .line 420
    :catch_0
    move-exception v0

    .line 421
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 410
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 411
    iput-object p1, p0, Lcom/android/server/slice/SlicePermissionManager$PkgUser;->mPkg:Ljava/lang/String;

    .line 412
    iput p2, p0, Lcom/android/server/slice/SlicePermissionManager$PkgUser;->mUserId:I

    .line 413
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/slice/SlicePermissionManager$PkgUser;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    .line 404
    iget-object v0, p0, Lcom/android/server/slice/SlicePermissionManager$PkgUser;->mPkg:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 440
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 441
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    .line 442
    .local v0, "other":Lcom/android/server/slice/SlicePermissionManager$PkgUser;
    iget-object v2, v0, Lcom/android/server/slice/SlicePermissionManager$PkgUser;->mPkg:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/slice/SlicePermissionManager$PkgUser;->mPkg:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, v0, Lcom/android/server/slice/SlicePermissionManager$PkgUser;->mUserId:I

    iget v3, p0, Lcom/android/server/slice/SlicePermissionManager$PkgUser;->mUserId:I

    if-ne v2, v3, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public getPkg()Ljava/lang/String;
    .locals 1

    .line 426
    iget-object v0, p0, Lcom/android/server/slice/SlicePermissionManager$PkgUser;->mPkg:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()I
    .locals 1

    .line 430
    iget v0, p0, Lcom/android/server/slice/SlicePermissionManager$PkgUser;->mUserId:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 435
    iget-object v0, p0, Lcom/android/server/slice/SlicePermissionManager$PkgUser;->mPkg:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget v1, p0, Lcom/android/server/slice/SlicePermissionManager$PkgUser;->mUserId:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 447
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/slice/SlicePermissionManager$PkgUser;->mPkg:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/server/slice/SlicePermissionManager$PkgUser;->mUserId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "%s@%d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
