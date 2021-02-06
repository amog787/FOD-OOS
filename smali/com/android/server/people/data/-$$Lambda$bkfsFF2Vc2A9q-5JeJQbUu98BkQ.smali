.class public final synthetic Lcom/android/server/people/data/-$$Lambda$bkfsFF2Vc2A9q-5JeJQbUu98BkQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/people/data/-$$Lambda$bkfsFF2Vc2A9q-5JeJQbUu98BkQ;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/people/data/-$$Lambda$bkfsFF2Vc2A9q-5JeJQbUu98BkQ;

    invoke-direct {v0}, Lcom/android/server/people/data/-$$Lambda$bkfsFF2Vc2A9q-5JeJQbUu98BkQ;-><init>()V

    sput-object v0, Lcom/android/server/people/data/-$$Lambda$bkfsFF2Vc2A9q-5JeJQbUu98BkQ;->INSTANCE:Lcom/android/server/people/data/-$$Lambda$bkfsFF2Vc2A9q-5JeJQbUu98BkQ;

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

    check-cast p1, Lcom/android/server/people/data/PackageData;

    invoke-virtual {p1}, Lcom/android/server/people/data/PackageData;->saveToDisk()V

    return-void
.end method
