.class public final synthetic Lcom/android/server/blob/-$$Lambda$BlobStoreConfig$DeviceConfigProperties$7FeT9Nj22YRJdnAt_b-xbcQB1wI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/provider/DeviceConfig$Properties;


# direct methods
.method public synthetic constructor <init>(Landroid/provider/DeviceConfig$Properties;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/blob/-$$Lambda$BlobStoreConfig$DeviceConfigProperties$7FeT9Nj22YRJdnAt_b-xbcQB1wI;->f$0:Landroid/provider/DeviceConfig$Properties;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/blob/-$$Lambda$BlobStoreConfig$DeviceConfigProperties$7FeT9Nj22YRJdnAt_b-xbcQB1wI;->f$0:Landroid/provider/DeviceConfig$Properties;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->lambda$refresh$0(Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;)V

    return-void
.end method
