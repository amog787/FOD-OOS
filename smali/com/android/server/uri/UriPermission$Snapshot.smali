.class public Lcom/android/server/uri/UriPermission$Snapshot;
.super Ljava/lang/Object;
.source "UriPermission.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/uri/UriPermission;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Snapshot"
.end annotation


# instance fields
.field final persistedCreateTime:J

.field final persistedModeFlags:I

.field final sourcePkg:Ljava/lang/String;

.field final targetPkg:Ljava/lang/String;

.field final targetUserId:I

.field final uri:Lcom/android/server/uri/GrantUri;


# direct methods
.method private constructor <init>(Lcom/android/server/uri/UriPermission;)V
    .locals 2
    .param p1, "perm"    # Lcom/android/server/uri/UriPermission;

    .line 373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 374
    iget v0, p1, Lcom/android/server/uri/UriPermission;->targetUserId:I

    iput v0, p0, Lcom/android/server/uri/UriPermission$Snapshot;->targetUserId:I

    .line 375
    iget-object v0, p1, Lcom/android/server/uri/UriPermission;->sourcePkg:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/uri/UriPermission$Snapshot;->sourcePkg:Ljava/lang/String;

    .line 376
    iget-object v0, p1, Lcom/android/server/uri/UriPermission;->targetPkg:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/uri/UriPermission$Snapshot;->targetPkg:Ljava/lang/String;

    .line 377
    iget-object v0, p1, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    iput-object v0, p0, Lcom/android/server/uri/UriPermission$Snapshot;->uri:Lcom/android/server/uri/GrantUri;

    .line 378
    iget v0, p1, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    iput v0, p0, Lcom/android/server/uri/UriPermission$Snapshot;->persistedModeFlags:I

    .line 379
    iget-wide v0, p1, Lcom/android/server/uri/UriPermission;->persistedCreateTime:J

    iput-wide v0, p0, Lcom/android/server/uri/UriPermission$Snapshot;->persistedCreateTime:J

    .line 380
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/uri/UriPermission;Lcom/android/server/uri/UriPermission$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/uri/UriPermission;
    .param p2, "x1"    # Lcom/android/server/uri/UriPermission$1;

    .line 365
    invoke-direct {p0, p1}, Lcom/android/server/uri/UriPermission$Snapshot;-><init>(Lcom/android/server/uri/UriPermission;)V

    return-void
.end method
