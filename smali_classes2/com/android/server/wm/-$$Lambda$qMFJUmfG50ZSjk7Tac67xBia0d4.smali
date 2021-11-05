.class public final synthetic Lcom/android/server/wm/-$$Lambda$qMFJUmfG50ZSjk7Tac67xBia0d4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/function/HeptConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$qMFJUmfG50ZSjk7Tac67xBia0d4;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$qMFJUmfG50ZSjk7Tac67xBia0d4;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$qMFJUmfG50ZSjk7Tac67xBia0d4;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$qMFJUmfG50ZSjk7Tac67xBia0d4;->INSTANCE:Lcom/android/server/wm/-$$Lambda$qMFJUmfG50ZSjk7Tac67xBia0d4;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/app/ActivityManagerInternal;

    check-cast p2, Ljava/lang/String;

    check-cast p3, Landroid/content/pm/ApplicationInfo;

    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    check-cast p5, Ljava/lang/Boolean;

    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p5

    check-cast p6, Ljava/lang/String;

    check-cast p7, Landroid/content/ComponentName;

    move-object p0, p1

    move-object p1, p2

    move-object p2, p3

    move p3, p4

    move p4, p5

    move-object p5, p6

    move-object p6, p7

    invoke-virtual/range {p0 .. p6}, Landroid/app/ActivityManagerInternal;->startProcess(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;ZZLjava/lang/String;Landroid/content/ComponentName;)V

    return-void
.end method
