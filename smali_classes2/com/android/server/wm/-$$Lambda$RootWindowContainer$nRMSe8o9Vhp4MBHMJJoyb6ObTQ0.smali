.class public final synthetic Lcom/android/server/wm/-$$Lambda$RootWindowContainer$nRMSe8o9Vhp4MBHMJJoyb6ObTQ0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Ljava/util/ArrayList;

.field private final synthetic f$1:Ljava/io/PrintWriter;

.field private final synthetic f$2:[I

.field private final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;Ljava/io/PrintWriter;[IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$nRMSe8o9Vhp4MBHMJJoyb6ObTQ0;->f$0:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$nRMSe8o9Vhp4MBHMJJoyb6ObTQ0;->f$1:Ljava/io/PrintWriter;

    iput-object p3, p0, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$nRMSe8o9Vhp4MBHMJJoyb6ObTQ0;->f$2:[I

    iput-boolean p4, p0, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$nRMSe8o9Vhp4MBHMJJoyb6ObTQ0;->f$3:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$nRMSe8o9Vhp4MBHMJJoyb6ObTQ0;->f$0:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$nRMSe8o9Vhp4MBHMJJoyb6ObTQ0;->f$1:Ljava/io/PrintWriter;

    iget-object v2, p0, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$nRMSe8o9Vhp4MBHMJJoyb6ObTQ0;->f$2:[I

    iget-boolean v3, p0, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$nRMSe8o9Vhp4MBHMJJoyb6ObTQ0;->f$3:Z

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/android/server/wm/RootWindowContainer;->lambda$dumpWindowsNoHeader$10(Ljava/util/ArrayList;Ljava/io/PrintWriter;[IZLcom/android/server/wm/WindowState;)V

    return-void
.end method
