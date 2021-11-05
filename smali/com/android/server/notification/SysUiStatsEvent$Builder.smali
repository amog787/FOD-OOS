.class Lcom/android/server/notification/SysUiStatsEvent$Builder;
.super Ljava/lang/Object;
.source "SysUiStatsEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/SysUiStatsEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Builder"
.end annotation


# instance fields
.field private final mBuilder:Landroid/util/StatsEvent$Builder;


# direct methods
.method protected constructor <init>(Landroid/util/StatsEvent$Builder;)V
    .locals 0
    .param p1, "builder"    # Landroid/util/StatsEvent$Builder;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/android/server/notification/SysUiStatsEvent$Builder;->mBuilder:Landroid/util/StatsEvent$Builder;

    .line 31
    return-void
.end method


# virtual methods
.method public addBooleanAnnotation(BZ)Lcom/android/server/notification/SysUiStatsEvent$Builder;
    .locals 1
    .param p1, "annotation"    # B
    .param p2, "value"    # Z

    .line 48
    iget-object v0, p0, Lcom/android/server/notification/SysUiStatsEvent$Builder;->mBuilder:Landroid/util/StatsEvent$Builder;

    invoke-virtual {v0, p1, p2}, Landroid/util/StatsEvent$Builder;->addBooleanAnnotation(BZ)Landroid/util/StatsEvent$Builder;

    .line 49
    return-object p0
.end method

.method public build()Landroid/util/StatsEvent;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/android/server/notification/SysUiStatsEvent$Builder;->mBuilder:Landroid/util/StatsEvent$Builder;

    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v0

    return-object v0
.end method

.method public setAtomId(I)Lcom/android/server/notification/SysUiStatsEvent$Builder;
    .locals 1
    .param p1, "atomId"    # I

    .line 38
    iget-object v0, p0, Lcom/android/server/notification/SysUiStatsEvent$Builder;->mBuilder:Landroid/util/StatsEvent$Builder;

    invoke-virtual {v0, p1}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    .line 39
    return-object p0
.end method

.method public writeBoolean(Z)Lcom/android/server/notification/SysUiStatsEvent$Builder;
    .locals 1
    .param p1, "value"    # Z

    .line 58
    iget-object v0, p0, Lcom/android/server/notification/SysUiStatsEvent$Builder;->mBuilder:Landroid/util/StatsEvent$Builder;

    invoke-virtual {v0, p1}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    .line 59
    return-object p0
.end method

.method public writeByteArray([B)Lcom/android/server/notification/SysUiStatsEvent$Builder;
    .locals 1
    .param p1, "value"    # [B

    .line 63
    iget-object v0, p0, Lcom/android/server/notification/SysUiStatsEvent$Builder;->mBuilder:Landroid/util/StatsEvent$Builder;

    invoke-virtual {v0, p1}, Landroid/util/StatsEvent$Builder;->writeByteArray([B)Landroid/util/StatsEvent$Builder;

    .line 64
    return-object p0
.end method

.method public writeInt(I)Lcom/android/server/notification/SysUiStatsEvent$Builder;
    .locals 1
    .param p1, "value"    # I

    .line 43
    iget-object v0, p0, Lcom/android/server/notification/SysUiStatsEvent$Builder;->mBuilder:Landroid/util/StatsEvent$Builder;

    invoke-virtual {v0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 44
    return-object p0
.end method

.method public writeString(Ljava/lang/String;)Lcom/android/server/notification/SysUiStatsEvent$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 53
    iget-object v0, p0, Lcom/android/server/notification/SysUiStatsEvent$Builder;->mBuilder:Landroid/util/StatsEvent$Builder;

    invoke-virtual {v0, p1}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    .line 54
    return-object p0
.end method
