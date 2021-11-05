.class public final synthetic Lcom/android/server/wm/-$$Lambda$OuObUsm0bB9g5X0kIXYkBYHvodY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/IntFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$OuObUsm0bB9g5X0kIXYkBYHvodY;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$OuObUsm0bB9g5X0kIXYkBYHvodY;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$OuObUsm0bB9g5X0kIXYkBYHvodY;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$OuObUsm0bB9g5X0kIXYkBYHvodY;->INSTANCE:Lcom/android/server/wm/-$$Lambda$OuObUsm0bB9g5X0kIXYkBYHvodY;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Landroid/os/Environment;->getDataSystemCeDirectory(I)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method
