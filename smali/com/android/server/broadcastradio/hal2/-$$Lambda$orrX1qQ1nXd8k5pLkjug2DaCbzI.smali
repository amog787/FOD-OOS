.class public final synthetic Lcom/android/server/broadcastradio/hal2/-$$Lambda$orrX1qQ1nXd8k5pLkjug2DaCbzI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/broadcastradio/hal2/-$$Lambda$orrX1qQ1nXd8k5pLkjug2DaCbzI;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/broadcastradio/hal2/-$$Lambda$orrX1qQ1nXd8k5pLkjug2DaCbzI;

    invoke-direct {v0}, Lcom/android/server/broadcastradio/hal2/-$$Lambda$orrX1qQ1nXd8k5pLkjug2DaCbzI;-><init>()V

    sput-object v0, Lcom/android/server/broadcastradio/hal2/-$$Lambda$orrX1qQ1nXd8k5pLkjug2DaCbzI;->INSTANCE:Lcom/android/server/broadcastradio/hal2/-$$Lambda$orrX1qQ1nXd8k5pLkjug2DaCbzI;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/hardware/radio/ProgramSelector$Identifier;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Landroid/hardware/radio/ProgramSelector$Identifier;

    return-object p1
.end method
