.class public final synthetic Lcom/android/server/print/-$$Lambda$UserState$HoM_sy_T_4RiQGYcbixewHZ2IMA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/print/-$$Lambda$UserState$HoM_sy_T_4RiQGYcbixewHZ2IMA;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/print/-$$Lambda$UserState$HoM_sy_T_4RiQGYcbixewHZ2IMA;

    invoke-direct {v0}, Lcom/android/server/print/-$$Lambda$UserState$HoM_sy_T_4RiQGYcbixewHZ2IMA;-><init>()V

    sput-object v0, Lcom/android/server/print/-$$Lambda$UserState$HoM_sy_T_4RiQGYcbixewHZ2IMA;->INSTANCE:Lcom/android/server/print/-$$Lambda$UserState$HoM_sy_T_4RiQGYcbixewHZ2IMA;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/server/print/UserState;

    check-cast p2, Landroid/content/ComponentName;

    invoke-static {p1, p2}, Lcom/android/server/print/UserState;->lambda$HoM_sy_T_4RiQGYcbixewHZ2IMA(Lcom/android/server/print/UserState;Landroid/content/ComponentName;)V

    return-void
.end method
