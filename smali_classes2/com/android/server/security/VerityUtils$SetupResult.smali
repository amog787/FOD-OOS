.class public Lcom/android/server/security/VerityUtils$SetupResult;
.super Ljava/lang/Object;
.source "VerityUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/security/VerityUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SetupResult"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final RESULT_FAILED:I = 0x3

.field private static final RESULT_OK:I = 0x1

.field private static final RESULT_SKIPPED:I = 0x2


# instance fields
.field private final mCode:I

.field private final mContentSize:I

.field private final mFileDescriptor:Ljava/io/FileDescriptor;


# direct methods
.method private constructor <init>(ILjava/io/FileDescriptor;I)V
    .locals 0
    .param p1, "code"    # I
    .param p2, "fileDescriptor"    # Ljava/io/FileDescriptor;
    .param p3, "contentSize"    # I

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    iput p1, p0, Lcom/android/server/security/VerityUtils$SetupResult;->mCode:I

    .line 230
    iput-object p2, p0, Lcom/android/server/security/VerityUtils$SetupResult;->mFileDescriptor:Ljava/io/FileDescriptor;

    .line 231
    iput p3, p0, Lcom/android/server/security/VerityUtils$SetupResult;->mContentSize:I

    .line 232
    return-void
.end method

.method public static failed()Lcom/android/server/security/VerityUtils$SetupResult;
    .locals 4

    .line 225
    new-instance v0, Lcom/android/server/security/VerityUtils$SetupResult;

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/security/VerityUtils$SetupResult;-><init>(ILjava/io/FileDescriptor;I)V

    return-object v0
.end method

.method public static ok(Ljava/io/FileDescriptor;I)Lcom/android/server/security/VerityUtils$SetupResult;
    .locals 2
    .param p0, "fileDescriptor"    # Ljava/io/FileDescriptor;
    .param p1, "contentSize"    # I

    .line 217
    new-instance v0, Lcom/android/server/security/VerityUtils$SetupResult;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0, p1}, Lcom/android/server/security/VerityUtils$SetupResult;-><init>(ILjava/io/FileDescriptor;I)V

    return-object v0
.end method

.method public static skipped()Lcom/android/server/security/VerityUtils$SetupResult;
    .locals 4

    .line 221
    new-instance v0, Lcom/android/server/security/VerityUtils$SetupResult;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/security/VerityUtils$SetupResult;-><init>(ILjava/io/FileDescriptor;I)V

    return-object v0
.end method


# virtual methods
.method public getContentSize()I
    .locals 1

    .line 247
    iget v0, p0, Lcom/android/server/security/VerityUtils$SetupResult;->mContentSize:I

    return v0
.end method

.method public getUnownedFileDescriptor()Ljava/io/FileDescriptor;
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/android/server/security/VerityUtils$SetupResult;->mFileDescriptor:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method public isFailed()Z
    .locals 2

    .line 235
    iget v0, p0, Lcom/android/server/security/VerityUtils$SetupResult;->mCode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOk()Z
    .locals 2

    .line 239
    iget v0, p0, Lcom/android/server/security/VerityUtils$SetupResult;->mCode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
