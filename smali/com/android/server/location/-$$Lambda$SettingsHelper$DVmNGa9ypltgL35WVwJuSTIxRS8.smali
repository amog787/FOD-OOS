.class public final synthetic Lcom/android/server/location/-$$Lambda$SettingsHelper$DVmNGa9ypltgL35WVwJuSTIxRS8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/location/-$$Lambda$SettingsHelper$DVmNGa9ypltgL35WVwJuSTIxRS8;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/location/-$$Lambda$SettingsHelper$DVmNGa9ypltgL35WVwJuSTIxRS8;

    invoke-direct {v0}, Lcom/android/server/location/-$$Lambda$SettingsHelper$DVmNGa9ypltgL35WVwJuSTIxRS8;-><init>()V

    sput-object v0, Lcom/android/server/location/-$$Lambda$SettingsHelper$DVmNGa9ypltgL35WVwJuSTIxRS8;->INSTANCE:Lcom/android/server/location/-$$Lambda$SettingsHelper$DVmNGa9ypltgL35WVwJuSTIxRS8;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lcom/android/server/location/SettingsHelper;->lambda$new$0()Landroid/util/ArraySet;

    move-result-object v0

    return-object v0
.end method
