.class public abstract Lcom/android/server/net/NetworkStatsManagerInternal;
.super Ljava/lang/Object;
.source "NetworkStatsManagerInternal.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract advisePersistThreshold(J)V
.end method

.method public abstract forceUpdate()V
.end method

.method public abstract getNetworkTotalBytes(Landroid/net/NetworkTemplate;JJ)J
.end method

.method public abstract getNetworkUidBytes(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;
.end method

.method public abstract setUidForeground(IZ)V
.end method
