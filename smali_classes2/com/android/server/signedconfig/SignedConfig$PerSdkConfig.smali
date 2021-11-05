.class public Lcom/android/server/signedconfig/SignedConfig$PerSdkConfig;
.super Ljava/lang/Object;
.source "SignedConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/signedconfig/SignedConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PerSdkConfig"
.end annotation


# instance fields
.field public final maxSdk:I

.field public final minSdk:I

.field public final values:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(IILjava/util/Map;)V
    .locals 1
    .param p1, "minSdk"    # I
    .param p2, "maxSdk"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 73
    .local p3, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput p1, p0, Lcom/android/server/signedconfig/SignedConfig$PerSdkConfig;->minSdk:I

    .line 75
    iput p2, p0, Lcom/android/server/signedconfig/SignedConfig$PerSdkConfig;->maxSdk:I

    .line 76
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/signedconfig/SignedConfig$PerSdkConfig;->values:Ljava/util/Map;

    .line 77
    return-void
.end method
