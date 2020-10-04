.class public final Lcom/android/server/notification/NotificationManagerService$DumpFilter;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DumpFilter"
.end annotation


# instance fields
.field public criticalPriority:Z

.field public filtered:Z

.field public normalPriority:Z

.field public pkgFilter:Ljava/lang/String;

.field public proto:Z

.field public redact:Z

.field public since:J

.field public stats:Z

.field public zen:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 9446
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9447
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    .line 9452
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->redact:Z

    .line 9453
    iput-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->proto:Z

    .line 9454
    iput-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->criticalPriority:Z

    .line 9455
    iput-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->normalPriority:Z

    return-void
.end method

.method public static parseFromArguments([Ljava/lang/String;)Lcom/android/server/notification/NotificationManagerService$DumpFilter;
    .locals 9
    .param p0, "args"    # [Ljava/lang/String;

    .line 9459
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    invoke-direct {v0}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;-><init>()V

    .line 9460
    .local v0, "filter":Lcom/android/server/notification/NotificationManagerService$DumpFilter;
    const/4 v1, 0x0

    .local v1, "ai":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_10

    .line 9461
    aget-object v2, p0, v1

    .line 9462
    .local v2, "a":Ljava/lang/String;
    const-string v3, "--proto"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 9463
    iput-boolean v4, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->proto:Z

    goto/16 :goto_6

    .line 9464
    :cond_0
    const-string v3, "--noredact"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v5, 0x0

    if-nez v3, :cond_e

    const-string v3, "--reveal"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_5

    .line 9466
    :cond_1
    const-string/jumbo v3, "p"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    const-string/jumbo v3, "pkg"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    const-string v3, "--package"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto/16 :goto_4

    .line 9476
    :cond_2
    const-string v3, "--zen"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    const-string/jumbo v3, "zen"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_3

    .line 9479
    :cond_3
    const-string v3, "--stats"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 9480
    iput-boolean v4, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->stats:Z

    .line 9481
    array-length v3, p0

    sub-int/2addr v3, v4

    if-ge v1, v3, :cond_4

    .line 9482
    add-int/lit8 v1, v1, 0x1

    .line 9483
    aget-object v3, p0, v1

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->since:J

    goto/16 :goto_6

    .line 9485
    :cond_4
    const-wide/16 v5, 0x0

    iput-wide v5, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->since:J

    goto/16 :goto_6

    .line 9487
    :cond_5
    const-string v3, "--dump-priority"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 9491
    array-length v3, p0

    sub-int/2addr v3, v4

    if-ge v1, v3, :cond_f

    .line 9492
    add-int/lit8 v1, v1, 0x1

    .line 9493
    aget-object v3, p0, v1

    const/4 v6, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v7

    const v8, -0x76664f19    # -3.699977E-33f

    if-eq v7, v8, :cond_8

    const v8, -0x5cfe9861

    if-eq v7, v8, :cond_7

    :cond_6
    goto :goto_1

    :cond_7
    const-string v7, "CRITICAL"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_2

    :cond_8
    const-string v5, "NORMAL"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    move v5, v4

    goto :goto_2

    :goto_1
    move v5, v6

    :goto_2
    if-eqz v5, :cond_a

    if-eq v5, v4, :cond_9

    goto :goto_6

    .line 9498
    :cond_9
    iput-boolean v4, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->normalPriority:Z

    goto :goto_6

    .line 9495
    :cond_a
    iput-boolean v4, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->criticalPriority:Z

    .line 9496
    goto :goto_6

    .line 9477
    :cond_b
    :goto_3
    iput-boolean v4, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    .line 9478
    iput-boolean v4, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->zen:Z

    goto :goto_6

    .line 9467
    :cond_c
    :goto_4
    array-length v3, p0

    sub-int/2addr v3, v4

    if-ge v1, v3, :cond_f

    .line 9468
    add-int/lit8 v1, v1, 0x1

    .line 9469
    aget-object v3, p0, v1

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->pkgFilter:Ljava/lang/String;

    .line 9470
    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->pkgFilter:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 9471
    const/4 v3, 0x0

    iput-object v3, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->pkgFilter:Ljava/lang/String;

    goto :goto_6

    .line 9473
    :cond_d
    iput-boolean v4, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    goto :goto_6

    .line 9465
    :cond_e
    :goto_5
    iput-boolean v5, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->redact:Z

    .line 9460
    .end local v2    # "a":Ljava/lang/String;
    :cond_f
    :goto_6
    add-int/2addr v1, v4

    goto/16 :goto_0

    .line 9504
    .end local v1    # "ai":I
    :cond_10
    return-object v0
.end method


# virtual methods
.method public matches(Landroid/content/ComponentName;)Z
    .locals 2
    .param p1, "component"    # Landroid/content/ComponentName;

    .line 9514
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 9515
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->zen:Z

    if-eqz v0, :cond_1

    :goto_0
    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public matches(Landroid/service/notification/StatusBarNotification;)Z
    .locals 2
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .line 9508
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 9509
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->zen:Z

    if-eqz v0, :cond_1

    goto :goto_0

    .line 9510
    :cond_1
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getOpPkg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    .line 9509
    :goto_0
    return v1
.end method

.method public matches(Ljava/lang/String;)Z
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;

    .line 9519
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 9520
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->zen:Z

    if-eqz v0, :cond_1

    :goto_0
    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->pkgFilter:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 9525
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->stats:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "stats"

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->zen:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "zen"

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->pkgFilter:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
