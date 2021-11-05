.class public final synthetic Lcom/android/server/appbinding/-$$Lambda$xkEFYM78dwFMyAjWJXkB7AxgA2c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/appbinding/-$$Lambda$xkEFYM78dwFMyAjWJXkB7AxgA2c;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/appbinding/-$$Lambda$xkEFYM78dwFMyAjWJXkB7AxgA2c;

    invoke-direct {v0}, Lcom/android/server/appbinding/-$$Lambda$xkEFYM78dwFMyAjWJXkB7AxgA2c;-><init>()V

    sput-object v0, Lcom/android/server/appbinding/-$$Lambda$xkEFYM78dwFMyAjWJXkB7AxgA2c;->INSTANCE:Lcom/android/server/appbinding/-$$Lambda$xkEFYM78dwFMyAjWJXkB7AxgA2c;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/server/appbinding/finders/AppServiceFinder;

    invoke-virtual {p1}, Lcom/android/server/appbinding/finders/AppServiceFinder;->startMonitoring()V

    return-void
.end method
