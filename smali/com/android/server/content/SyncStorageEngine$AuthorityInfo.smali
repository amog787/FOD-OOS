.class public Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
.super Ljava/lang/Object;
.source "SyncStorageEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/SyncStorageEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AuthorityInfo"
.end annotation


# static fields
.field public static final NOT_INITIALIZED:I = -0x1

.field public static final NOT_SYNCABLE:I = 0x0

.field public static final SYNCABLE:I = 0x1

.field public static final SYNCABLE_NOT_INITIALIZED:I = 0x2

.field public static final SYNCABLE_NO_ACCOUNT_ACCESS:I = 0x3

.field public static final UNDEFINED:I = -0x2


# instance fields
.field backoffDelay:J

.field backoffTime:J

.field delayUntil:J

.field enabled:Z

.field final ident:I

.field final periodicSyncs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/PeriodicSync;",
            ">;"
        }
    .end annotation
.end field

.field syncable:I

.field final target:Lcom/android/server/content/SyncStorageEngine$EndPoint;


# direct methods
.method constructor <init>(Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;)V
    .locals 4
    .param p1, "toCopy"    # Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 300
    iget-object v0, p1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iput-object v0, p0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 301
    iget v0, p1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    iput v0, p0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    .line 302
    iget-boolean v0, p1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    iput-boolean v0, p0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    .line 303
    iget v0, p1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    iput v0, p0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    .line 304
    iget-wide v0, p1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    iput-wide v0, p0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    .line 305
    iget-wide v0, p1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    iput-wide v0, p0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    .line 306
    iget-wide v0, p1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->delayUntil:J

    iput-wide v0, p0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->delayUntil:J

    .line 307
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    .line 308
    iget-object v0, p1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/PeriodicSync;

    .line 310
    .local v1, "sync":Landroid/content/PeriodicSync;
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    new-instance v3, Landroid/content/PeriodicSync;

    invoke-direct {v3, v1}, Landroid/content/PeriodicSync;-><init>(Landroid/content/PeriodicSync;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 311
    .end local v1    # "sync":Landroid/content/PeriodicSync;
    goto :goto_0

    .line 312
    :cond_0
    return-void
.end method

.method constructor <init>(Lcom/android/server/content/SyncStorageEngine$EndPoint;I)V
    .locals 1
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "id"    # I

    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 315
    iput-object p1, p0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 316
    iput p2, p0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    .line 317
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    .line 318
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    .line 319
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->defaultInitialisation()V

    .line 320
    return-void
.end method

.method private defaultInitialisation()V
    .locals 8

    .line 323
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    .line 324
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    .line 325
    iput-wide v0, p0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    .line 327
    invoke-static {}, Lcom/android/server/content/SyncStorageEngine;->access$000()Lcom/android/server/content/SyncStorageEngine$PeriodicSyncAddedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 328
    invoke-static {}, Lcom/android/server/content/SyncStorageEngine;->access$000()Lcom/android/server/content/SyncStorageEngine$PeriodicSyncAddedListener;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-wide/32 v4, 0x15180

    const-wide/32 v6, 0x15180

    .line 330
    invoke-static {v6, v7}, Lcom/android/server/content/SyncStorageEngine;->calculateDefaultFlexTime(J)J

    move-result-wide v6

    .line 328
    invoke-interface/range {v1 .. v7}, Lcom/android/server/content/SyncStorageEngine$PeriodicSyncAddedListener;->onPeriodicSyncAdded(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;JJ)V

    .line 332
    :cond_0
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", syncable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", backoff="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", delay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->delayUntil:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
