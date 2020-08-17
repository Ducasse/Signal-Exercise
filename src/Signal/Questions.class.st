"
- Each component could implement and Id

- What do we need getEtat in Element

Why this is not in Element 
- public class Interrupteur extends Element {
    public String description() {
        return this.getId();
    }

- Extensions 
	Adding null input

- setIn1() what a fuck?

- Why Vanne is not a subclass of Gate?

- public abstract class Composant {
    public String getId() {
        return super.toString();
    }

- getIns -> getInterrupteurs()
"
Class {
	#name : #Questions,
	#superclass : #Object,
	#category : #'Signal-BeforeProject'
}
