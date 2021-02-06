.class final Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;
.super Ljava/lang/Object;
.source "SettingsStatsUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/stats/pull/SettingsStatsUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FlagsData"
.end annotation


# instance fields
.field mDataType:I

.field mFlagName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "flagName"    # Ljava/lang/String;
    .param p2, "dataType"    # I

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 216
    iput-object p1, p0, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;->mFlagName:Ljava/lang/String;

    .line 217
    iput p2, p0, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;->mDataType:I

    .line 218
    return-void
.end method
