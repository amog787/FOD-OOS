.class public final Lcom/android/server/net/NetworkPolicyLogger$Data;
.super Ljava/lang/Object;
.source "NetworkPolicyLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkPolicyLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Data"
.end annotation


# instance fields
.field bfield1:Z

.field bfield2:Z

.field ifield1:I

.field ifield2:I

.field ifield3:I

.field lfield1:J

.field sfield1:Ljava/lang/String;

.field timeStamp:J

.field type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 534
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 1

    .line 547
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->sfield1:Ljava/lang/String;

    .line 548
    return-void
.end method
