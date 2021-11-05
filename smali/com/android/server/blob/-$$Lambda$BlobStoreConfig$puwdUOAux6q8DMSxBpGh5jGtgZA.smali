.class public final synthetic Lcom/android/server/blob/-$$Lambda$BlobStoreConfig$puwdUOAux6q8DMSxBpGh5jGtgZA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/blob/-$$Lambda$BlobStoreConfig$puwdUOAux6q8DMSxBpGh5jGtgZA;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/blob/-$$Lambda$BlobStoreConfig$puwdUOAux6q8DMSxBpGh5jGtgZA;

    invoke-direct {v0}, Lcom/android/server/blob/-$$Lambda$BlobStoreConfig$puwdUOAux6q8DMSxBpGh5jGtgZA;-><init>()V

    sput-object v0, Lcom/android/server/blob/-$$Lambda$BlobStoreConfig$puwdUOAux6q8DMSxBpGh5jGtgZA;->INSTANCE:Lcom/android/server/blob/-$$Lambda$BlobStoreConfig$puwdUOAux6q8DMSxBpGh5jGtgZA;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 0

    invoke-static {p1}, Lcom/android/server/blob/BlobStoreConfig;->lambda$initialize$0(Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method
