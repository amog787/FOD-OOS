.class public final synthetic Lcom/android/server/wm/-$$Lambda$WindowContainer$7x9zhFx3vhSZ5lMUA8efWaz-6co;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$WindowContainer$7x9zhFx3vhSZ5lMUA8efWaz-6co;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$WindowContainer$7x9zhFx3vhSZ5lMUA8efWaz-6co;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$WindowContainer$7x9zhFx3vhSZ5lMUA8efWaz-6co;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$WindowContainer$7x9zhFx3vhSZ5lMUA8efWaz-6co;->INSTANCE:Lcom/android/server/wm/-$$Lambda$WindowContainer$7x9zhFx3vhSZ5lMUA8efWaz-6co;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/android/server/wm/Task;

    invoke-static {p1}, Lcom/android/server/wm/WindowContainer;->lambda$getTaskBelow$10(Lcom/android/server/wm/Task;)Z

    move-result p1

    return p1
.end method
