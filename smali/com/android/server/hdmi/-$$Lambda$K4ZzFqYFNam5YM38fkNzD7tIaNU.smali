.class public final synthetic Lcom/android/server/hdmi/-$$Lambda$K4ZzFqYFNam5YM38fkNzD7tIaNU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/hdmi/-$$Lambda$K4ZzFqYFNam5YM38fkNzD7tIaNU;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/hdmi/-$$Lambda$K4ZzFqYFNam5YM38fkNzD7tIaNU;

    invoke-direct {v0}, Lcom/android/server/hdmi/-$$Lambda$K4ZzFqYFNam5YM38fkNzD7tIaNU;-><init>()V

    sput-object v0, Lcom/android/server/hdmi/-$$Lambda$K4ZzFqYFNam5YM38fkNzD7tIaNU;->INSTANCE:Lcom/android/server/hdmi/-$$Lambda$K4ZzFqYFNam5YM38fkNzD7tIaNU;

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

    check-cast p1, Ljava/lang/Integer;

    invoke-static {p1}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
