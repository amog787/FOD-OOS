.class final Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;
.super Ljava/lang/Object;
.source "InstantAppRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/InstantAppRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UninstalledInstantAppState"
.end annotation


# instance fields
.field final mInstantAppInfo:Landroid/content/pm/InstantAppInfo;

.field final mTimestamp:J


# direct methods
.method public constructor <init>(Landroid/content/pm/InstantAppInfo;J)V
    .locals 0
    .param p1, "instantApp"    # Landroid/content/pm/InstantAppInfo;
    .param p2, "timestamp"    # J

    .line 1183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1184
    iput-object p1, p0, Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;->mInstantAppInfo:Landroid/content/pm/InstantAppInfo;

    .line 1185
    iput-wide p2, p0, Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;->mTimestamp:J

    .line 1186
    return-void
.end method
