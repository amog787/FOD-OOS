.class public final synthetic Lcom/android/server/wm/-$$Lambda$3W4Y_XVQUddVKzLjibuHW7h0R1g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/function/HexConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$3W4Y_XVQUddVKzLjibuHW7h0R1g;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$3W4Y_XVQUddVKzLjibuHW7h0R1g;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$3W4Y_XVQUddVKzLjibuHW7h0R1g;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$3W4Y_XVQUddVKzLjibuHW7h0R1g;->INSTANCE:Lcom/android/server/wm/-$$Lambda$3W4Y_XVQUddVKzLjibuHW7h0R1g;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/app/ActivityManagerInternal;

    check-cast p2, Ljava/lang/String;

    check-cast p3, Landroid/content/pm/ApplicationInfo;

    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    check-cast p5, Ljava/lang/String;

    check-cast p6, Landroid/content/ComponentName;

    move-object p0, p1

    move-object p1, p2

    move-object p2, p3

    move p3, p4

    move-object p4, p5

    move-object p5, p6

    invoke-virtual/range {p0 .. p5}, Landroid/app/ActivityManagerInternal;->startProcess(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;ZLjava/lang/String;Landroid/content/ComponentName;)V

    return-void
.end method
